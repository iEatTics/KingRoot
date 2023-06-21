.class Lcom/kingroot/kinguser/bin$a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btN:Lcom/kingroot/kinguser/bin$a;

.field final synthetic btS:Ljava/lang/String;

.field final synthetic btT:I

.field final synthetic btW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$7;->btN:Lcom/kingroot/kinguser/bin$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$a$7;->btW:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/bin$a$7;->btS:Ljava/lang/String;

    iput p4, p0, Lcom/kingroot/kinguser/bin$a$7;->btT:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 789
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$a$7;->btS:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/wd$a;->MA:Ljava/lang/String;

    .line 790
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget v1, p0, Lcom/kingroot/kinguser/bin$a$7;->btT:I

    iput v1, v0, Lcom/kingroot/kinguser/wd$a;->MB:I

    .line 791
    const-string v0, "loginQQ"

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$a$7;->btW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$7;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->a(Landroid/content/Context;II)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    const-string v0, "loginWX"

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$a$7;->btW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$7;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
