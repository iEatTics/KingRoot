.class public Lcom/kingroot/kinguser/activitys/RootProcessActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aiC:Lcom/kingroot/kinguser/aus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RootProcessActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    const-class v1, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const-string v1, "root_process_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public cW(I)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->aiC:Lcom/kingroot/kinguser/aus;

    iget-object v2, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->aiC:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, p1, v1, v2}, Lcloudsdk/ext/kr/RootSdk;->dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    .line 50
    return-void
.end method

.method public cX(I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->aiC:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aus;->cX(I)V

    .line 54
    return-void
.end method

.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/axq;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v1, Lcom/kingroot/kinguser/aus;

    invoke-direct {v1, v0, p0}, Lcom/kingroot/kinguser/aus;-><init>(Lcom/kingroot/kinguser/auj$b;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->aiC:Lcom/kingroot/kinguser/aus;

    .line 30
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->aiC:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axq;->a(Lcom/kingroot/kinguser/auj$a;)V

    .line 31
    return-object v0
.end method
