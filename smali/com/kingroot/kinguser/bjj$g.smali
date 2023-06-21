.class final Lcom/kingroot/kinguser/bjj$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$g;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$g;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjj;->bwV:Lcom/kingroot/kinguser/bjj$e;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bjj$e;->aea()V

    .line 456
    return-void
.end method
