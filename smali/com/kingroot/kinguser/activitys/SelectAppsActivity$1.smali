.class Lcom/kingroot/kinguser/activitys/SelectAppsActivity$1;
.super Lcom/kingroot/kinguser/axb$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->oC()Lcom/kingroot/kinguser/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiD:Lcom/kingroot/kinguser/activitys/SelectAppsActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/SelectAppsActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$1;->aiD:Lcom/kingroot/kinguser/activitys/SelectAppsActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/axb$b;-><init>()V

    return-void
.end method


# virtual methods
.method public ab(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/asm;->Od()Lcom/kingroot/kinguser/asm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asm;->Oe()Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 70
    iget-object v4, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    return-object v1
.end method
