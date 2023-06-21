.class Lcom/kingroot/kinguser/anv$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEs:Lcom/kingroot/kinguser/anv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$3;->aEs:Lcom/kingroot/kinguser/anv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$3;->aEs:Lcom/kingroot/kinguser/anv;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv;->b(Lcom/kingroot/kinguser/anv;)Lcom/kingroot/kinguser/ant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ant;->sb()V

    .line 124
    return-void
.end method
