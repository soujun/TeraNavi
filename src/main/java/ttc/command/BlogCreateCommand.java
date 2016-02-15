package ttc.command;

import ttc.context.RequestContext;
import ttc.context.ResponseContext;

import ttc.util.MySqlConnectionManager;

import ttc.exception.Business.BusinessLogicException;
import ttc.exception.Integration.IntegrationException;

import java.util.Map;
import java.util.HashMap;

import ttc.util.factory.AbstractDaoFactory;
import ttc.dao.AbstractDao;
import ttc.exception.Business.ParameterInvalidException;

public class BlogCreateCommand extends AbstractCommand{

    public ResponseContext execute(ResponseContext resc)throws BusinessLogicException{
        try{
            RequestContext reqc = getRequestContext();

            String userId = reqc.getParameter("userId")[0];

            String title = reqc.getParameter("title")[0];

            String headerPath = reqc.getParameter("headerPath")[0];

            String explanation = reqc.getParameter("explanation")[0];

            Map params = new HashMap();
            params.put("userId",userId);
            params.put("title",title);
            params.put("headerPath",headerPath);
            params.put("explanation",explanation);
            params.put("status","1");

            MySqlConnectionManager.getInstance().beginTransaction();

            AbstractDaoFactory factory = AbstractDaoFactory.getFactory("blog");
            AbstractDao dao = factory.getAbstractDao();
            dao.update(params);

            MySqlConnectionManager.getInstance().commit();
            MySqlConnectionManager.getInstance().closeConnection();

			resc.setResult(params);

            resc.setTarget("blogCreateResult");

            return resc;
        }catch(NullPointerException e){
			throw new ParameterInvalidException("入力内容が足りません", e);
		}catch(IntegrationException e){
            throw new BusinessLogicException(e.getMessage(),e);
        }
    }

}
