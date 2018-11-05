package edu.dmacc.spring.footballteamleagueroster;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class PlayerDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("FootballTeamLeagueRoster");
	
	public void insertPlayer(Player playerToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(playerToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Player> getAllPlayers() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select p from Player p";
		TypedQuery<Player> typedQuery = em.createQuery(q, Player.class);
		List<Player> all = typedQuery.getResultList();
		return all;
	}
	
	public List<Player> getAllTeamPlayers(int teamId) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select p from Player p where p.teamId = :teamId";
		TypedQuery<Player> typedQuery = em.createQuery(q, Player.class);
		typedQuery.setParameter("teamId", teamId);
		List<Player> all = typedQuery.getResultList();
		return all;
	}

}
