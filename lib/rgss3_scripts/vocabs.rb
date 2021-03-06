#==============================================================================
# ** Vocaboli
#  Questo modulo definisce termini e messaggi. Definisce alcuni dati e variabili
# costanti. I termini nel database sono ottenuti da $data_system.
#==============================================================================

module Vocab

  # Schermata del Negozio
  ShopBuy = "Compra"
  ShopSell = "Vendi"
  ShopCancel = "Annulla"
  Possession = "Posseduti"

  # Schermata dello Status
  ExpTotal = "Esp. Attuale"
  ExpNext = "Per il prossimo %s"

  # Schermata di Salvataggio/Caricamento
  SaveMessage = "In quale File vuoi salvare?"
  LoadMessage = "Quale File vuoi caricare?"
  File = "File"

  # Mostra quando ci sono più membri
  PartyName = "Il gruppo di %s"

  # Messaggi di Battaglia normali
  Emerge = "Appare %s!"
  Preemptive = "%s ha il sopravvento!"
  Surprise = "%s è stato sorpreso!"
  EscapeStart = "%s cerca di fuggire!"
  EscapeFailure = "Tuttavia, non è riuscito nell'impresa!"

  # Messaggi di Fine Battaglia
  Victory = "%s ha ottenuto la vittoria!"
  Defeat = "%s è stato sconfitto."
  ObtainExp = "%s ESP ricevuta!"
  ObtainGold = "Hai guadagnato %s\\G!"
  ObtainItem = "Hai trovato %s!"
  LevelUp = "%s è ora al %s %s!"
  ObtainSkill = "Ha imparato %s!"

  # Usa Oggetto
  UseItem = "%s usa %s!"

  # Colpo Critico
  CriticalToEnemy = "Un colpo eccellente!!"
  CriticalToActor = "Ahi, questo fa male!!"

  # Risultanti delle azioni sugli eroi
  ActorDamage = "%s subisce %s punti danno!"
  ActorRecovery = "%s recupera %s %s!"
  ActorGain = "%s ottiene %s %s!"
  ActorLoss = "%s ha perso %s %s!"
  ActorDrain = "%s è stato assorbito di %s %s!"
  ActorNoDamage = "%s non subisce danno!"
  ActorNoHit = "Mancato! %s non subisce danno!"

  # Risultanti delle azioni sui nemici
  EnemyDamage = "%s subisce %s punti danno!"
  EnemyRecovery = "%s recupera %s %s!"
  EnemyGain = "%s ottiene %s %s!"
  EnemyLoss = "%s ha perso %s %s!"
  EnemyDrain = "Assorbe %s %s da %s!"
  EnemyNoDamage = "%s non subisce danno!"
  EnemyNoHit = "Mancato! %s non subisce danno!"

  # Evasione/Riflesso
  Evasion = "%s ha schivato l'attacco!"
  MagicEvasion = "%s ha annullato la magia!"
  MagicReflection = "%s ha riflesso la magia!"
  CounterAttack = "%s ha contrattaccato!"
  Substitute = "%s ha protetto %s!"

  # Buff/Debuff
  BuffAdd = "%s ha un incremento di %s!"
  DebuffAdd = "%s ha un indebolimento di %s!"
  BuffRemove = "%s fa tornare normale %s."

  # Quando un'abilità o un oggetto non ha effetto
  ActionFailure = "Non ha avuto effetto su %s!"

  # Messaggi di Errore
  PlayerPosError = "Non hai impostato la posizione iniziale del giocatore."
  EventOverflow = "Le chiamate agli Eventi Comuni hanno raggiunto il limite."

  # Statistiche di Base
  # @return [String]
  def self.basic(basic_id)
    $data_system.terms.basic[basic_id]
  end

  # Parametri
  # @return [String]
  def self.param(param_id)
    $data_system.terms.params[param_id]
  end

  # Tipo Equipaggiamento
  # @return [String]
  def self.etype(etype_id)
    $data_system.terms.etypes[etype_id]
  end

  # Comandi
  # @return [String]
  def self.command(command_id)
    $data_system.terms.commands[command_id]
  end

  # Valuta
  # @return [String]
  def self.currency_unit
    $data_system.currency_unit
  end

  # @return [String]
  def self.level;
    basic(0);
  end

  # Livello
  # @return [String]
  def self.level_a;
    basic(1);
  end

  # Livello (abbreviato)
  # @return [String]
  def self.hp;
    basic(2);
  end

  # PV
  # @return [String]
  def self.hp_a;
    basic(3);
  end

  # PV (abbreviato)
  # @return [String]
  def self.mp;
    basic(4);
  end

  # PM
  # @return [String]
  def self.mp_a;
    basic(5);
  end

  # PM (abbreviato)
  # @return [String]
  def self.tp;
    basic(6);
  end

  # PT
  # @return [String]
  def self.tp_a;
    basic(7);
  end

  # PT (abbreviato)
  # @return [String]
  def self.fight;
    command(0);
  end

  # Lotta
  # @return [String]
  def self.escape;
    command(1);
  end

  # Fuggi
  # @return [String]
  def self.attack;
    command(2);
  end

  # Attacca
  # @return [String]
  def self.guard;
    command(3);
  end

  # Difendi
  # @return [String]
  def self.item;
    command(4);
  end

  # Oggetti
  # @return [String]
  def self.skill;
    command(5);
  end

  # Abilità
  # @return [String]
  def self.equip;
    command(6);
  end

  # Equipaggia
  # @return [String]
  def self.status;
    command(7);
  end

  # Status
  # @return [String]
  def self.formation;
    command(8);
  end

  # Cambia Formazione
  # @return [String]
  def self.save;
    command(9);
  end

  # Salva
  # @return [String]
  def self.game_end;
    command(10);
  end

  # Esci dal Gioco
  # @return [String]
  def self.weapon;
    command(12);
  end

  # Armi
  # @return [String]
  def self.armor;
    command(13);
  end

  # Armature
  # @return [String]
  def self.key_item;
    command(14);
  end

  # Oggetti Chiave
  # @return [String]
  def self.equip2;
    command(15);
  end

  # Cambia Equipaggiamento
  # @return [String]
  def self.optimize;
    command(16);
  end

  # Ottimizza Equipaggiamento
  # @return [String]
  def self.clear;
    command(17);
  end

  # Rimuovi Tutto
  # @return [String]
  def self.new_game;
    command(18);
  end

  # Nuovo Gioco
  # @return [String]
  def self.continue;
    command(19);
  end

  # Continua
  # @return [String]
  def self.shutdown;
    command(20);
  end

  # Esci
  # @return [String]
  def self.to_title;
    command(21);
  end

  # Vai al Titolo
  # @return [String]
  def self.cancel;
    command(22);
  end # Annulla
end
