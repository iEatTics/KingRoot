.class Lcom/kingroot/kinguser/atm$11;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->Pl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$11;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1031
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$11;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {}, Lcom/kingroot/kinguser/atu;->OH()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;Ljava/util/List;)Ljava/util/List;

    .line 1033
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DY()Ljava/lang/String;

    move-result-object v1

    .line 1035
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$11;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->r(Lcom/kingroot/kinguser/atm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ats;

    .line 1036
    if-eqz v0, :cond_0

    .line 1039
    iget-object v3, v0, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$11;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->u(Lcom/kingroot/kinguser/atm;)V

    .line 1048
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$11;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->v(Lcom/kingroot/kinguser/atm;)V

    goto :goto_0
.end method
