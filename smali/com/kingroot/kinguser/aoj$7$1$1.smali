.class Lcom/kingroot/kinguser/aoj$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGf:Lcom/kingroot/kinguser/aoj$7$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj$7$1;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$7$1$1;->aGf:Lcom/kingroot/kinguser/aoj$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7$1$1;->aGf:Lcom/kingroot/kinguser/aoj$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppIgnoreUpdateActivity;->aK(Landroid/content/Context;)V

    .line 726
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7$1$1;->aGf:Lcom/kingroot/kinguser/aoj$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;Z)Z

    .line 727
    return-void
.end method
