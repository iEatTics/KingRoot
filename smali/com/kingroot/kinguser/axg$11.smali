.class Lcom/kingroot/kinguser/axg$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->z(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$11;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$11;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->a(Lcom/kingroot/kinguser/axg;)Lcom/kingroot/kinguser/auh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auh$a;->PW()V

    .line 300
    return-void
.end method
