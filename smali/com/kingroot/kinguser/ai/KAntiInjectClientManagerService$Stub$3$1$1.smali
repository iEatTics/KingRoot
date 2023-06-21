.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqf:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;->aqf:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;->aqf:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqd:Lcom/kingroot/kinguser/hk;

    invoke-interface {v1}, Lcom/kingroot/kinguser/hk;->aY()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;->aqf:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->a(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;)Lcom/kingroot/kinguser/bed;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 612
    return-void
.end method
