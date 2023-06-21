.class Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZO()V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/bfc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfc;->setWellChosenMode(Z)V

    .line 185
    return-void
.end method
