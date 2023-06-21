.class Lcom/kingroot/kinguser/my;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic wA:Lcom/kingroot/kinguser/mx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/mx;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/my;->wA:Lcom/kingroot/kinguser/mx;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/my;->wA:Lcom/kingroot/kinguser/mx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/mx;->eM()V

    .line 136
    return-void
.end method
