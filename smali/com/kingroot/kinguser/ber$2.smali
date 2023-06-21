.class Lcom/kingroot/kinguser/ber$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ber;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blx:Lcom/kingroot/kinguser/ber;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$2;->blx:Lcom/kingroot/kinguser/ber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$2;->blx:Lcom/kingroot/kinguser/ber;

    invoke-static {v0}, Lcom/kingroot/kinguser/ber;->b(Lcom/kingroot/kinguser/ber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$2;->blx:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
