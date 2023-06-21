.class Lcom/kingroot/kinguser/anu$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEg:Lcom/kingroot/kinguser/anu$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu$10;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$10$2;->aEg:Lcom/kingroot/kinguser/anu$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$2;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->c(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/auf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10$2;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v1, v1, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auf$a;->i(Landroid/app/Activity;)V

    .line 665
    return-void
.end method
