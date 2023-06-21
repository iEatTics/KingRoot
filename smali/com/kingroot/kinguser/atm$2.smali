.class Lcom/kingroot/kinguser/atm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->j(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 527
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->k(Lcom/kingroot/kinguser/atm;)V

    .line 528
    return-void
.end method
