.class Lcom/kingroot/kinguser/axa$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa;->bd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$12;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 946
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 947
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$12;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->e(Lcom/kingroot/kinguser/axa;)V

    .line 948
    return-void
.end method
