package edu.dmacc.spring.footballteamleagueroster;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired PlayerDao pdao;
	@Autowired TeamDao tdao;
	
	private static final String[] grades = {"Freshman", "Sophomore", "Junior", "Senior"};
	
	@RequestMapping(value = "/form")
		public ModelAndView player(Team team) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("pages/playerForm.jsp");
			modelAndView.addObject("player", new Player());
			modelAndView.addObject("grades", grades);
			modelAndView.addObject("teamid", team.getId());
			return modelAndView;
		}

	@RequestMapping(value = "/result")
		public ModelAndView processPlayer(Player player) {
			ModelAndView modelAndView = new ModelAndView();
			pdao.insertPlayer(player);
			modelAndView.setViewName("pages/playerResult.jsp");
			modelAndView.addObject("p", player);
			return modelAndView;
		}
	
	@RequestMapping(value = "/viewAllPlayers")
		public ModelAndView viewAllPlayers() {
			ModelAndView modelAndView = new ModelAndView();
			List<Player> allPlayers = pdao.getAllPlayers();
			modelAndView.setViewName("pages/viewAllPlayers.jsp");
			modelAndView.addObject("all", allPlayers);
			return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllTeams")
	public ModelAndView viewAllTeams() {
		ModelAndView modelAndView = new ModelAndView();
		List<Team> allTeams = tdao.getAllTeams();
		modelAndView.setViewName("pages/viewAllTeams.jsp");
		modelAndView.addObject("team", new Team());
		modelAndView.addObject("all", allTeams);
		return modelAndView;
	}
	
	@RequestMapping(value = "/addTeam")
	public ModelAndView team() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("pages/teamForm.jsp");
		modelAndView.addObject("team", new Team());
		return modelAndView;
	}
	
	@RequestMapping(value = "/resultTeam")
	public ModelAndView processTeam(Team team) {
		ModelAndView modelAndView = new ModelAndView();
		tdao.insertTeam(team);
		modelAndView.setViewName("pages/teamResult.jsp");
		modelAndView.addObject("t", team);
		return modelAndView;
	}
	
	@Bean
		public PlayerDao pdao() {
			PlayerDao bean = new PlayerDao();
			return bean;
		}
	
	@Bean
	public TeamDao tdao() {
		TeamDao bean = new TeamDao();
		return bean;
	}
}
