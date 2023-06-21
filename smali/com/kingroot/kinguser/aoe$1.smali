.class Lcom/kingroot/kinguser/aoe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoe;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFg:Lcom/kingroot/kinguser/aoe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoe;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/kinguser/aoe$1;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$1;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->a(Lcom/kingroot/kinguser/aoe;)V

    .line 122
    return-void
.end method
