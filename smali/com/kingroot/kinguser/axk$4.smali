.class Lcom/kingroot/kinguser/axk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axk;->Ud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/kingroot/kinguser/axk$4;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$4;->this$0:Lcom/kingroot/kinguser/axk;

    iget-object v1, p0, Lcom/kingroot/kinguser/axk$4;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kmPlugins.zip"

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 382
    return-void
.end method
