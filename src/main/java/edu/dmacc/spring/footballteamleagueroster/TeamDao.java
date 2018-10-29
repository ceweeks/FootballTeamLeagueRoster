package edu.dmacc.spring.footballteamleagueroster;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class TeamDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("FootballTeamLeagueRoster");
	
	public void insertTeam(Team teamToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(teamToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Team> getAllTeams() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select t from Team t";
		TypedQuery<Team> typedQuery = em.createQuery(q, Team.class);
		List<Team> all = typedQuery.getResultList();
		return all;
	}

}
