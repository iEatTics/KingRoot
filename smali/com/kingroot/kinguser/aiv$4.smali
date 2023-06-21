.class Lcom/kingroot/kinguser/aiv$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asy:Lcom/kingroot/kinguser/aiv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiv;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/kingroot/kinguser/aiv$4;->asy:Lcom/kingroot/kinguser/aiv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 816
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 817
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv$4;->asy:Lcom/kingroot/kinguser/aiv;

    invoke-static {v0}, Lcom/kingroot/kinguser/aiv;->a(Lcom/kingroot/kinguser/aiv;)V

    .line 818
    return-void
.end method
