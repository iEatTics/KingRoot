.class Lcom/kingroot/kinguser/bex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bex;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blL:Lcom/kingroot/kinguser/bex;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bex;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/bex$2;->blL:Lcom/kingroot/kinguser/bex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$2;->blL:Lcom/kingroot/kinguser/bex;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    return-void
.end method
