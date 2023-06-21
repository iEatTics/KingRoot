.class Lcom/kingroot/kinguser/ain$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic arT:Lcom/kingroot/kinguser/ain;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ain;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/ain$1;->arT:Lcom/kingroot/kinguser/ain;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/ain$1;->arT:Lcom/kingroot/kinguser/ain;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ain;->ga(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/ain$1;->arT:Lcom/kingroot/kinguser/ain;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :cond_0
    return-void
.end method
