.class Lcom/kingroot/kinguser/agu$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agu;->a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ana:Lcom/kingroot/kinguser/agu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agu;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/agu$2;->ana:Lcom/kingroot/kinguser/agu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 136
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/install/IInjectCallback;

    .line 137
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 139
    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/agu;->wh()Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bho;->f(Lcom/kingroot/kinguser/util/protect/RebootStat;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/agu;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/agu$2;->ana:Lcom/kingroot/kinguser/agu;

    invoke-static {v1}, Lcom/kingroot/kinguser/agu;->a(Lcom/kingroot/kinguser/agu;)I

    move-result v1

    .line 146
    if-eqz v0, :cond_1

    .line 148
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/advance/install/IInjectCallback;->onFinish(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
