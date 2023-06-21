.class public Lcom/kingroot/kinguser/mvp/presenter/SilentInstallPagePresenter$2;
.super Lcom/kingroot/kinguser/advance/install/IInjectCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auu;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/SilentInstallPagePresenter$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/IInjectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/kingroot/kinguser/mvp/presenter/SilentInstallPagePresenter$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v3}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :goto_1
    invoke-interface {v3, v1}, Lcom/kingroot/kinguser/aul$b;->cY(Z)V

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method
