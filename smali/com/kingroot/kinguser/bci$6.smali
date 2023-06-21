.class Lcom/kingroot/kinguser/bci$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->Ud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$6;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$6;->this$0:Lcom/kingroot/kinguser/bci;

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$6;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v1}, Lcom/kingroot/kinguser/bci;->i(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "kmPlugins.zip"

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 378
    return-void
.end method
