.class Lcom/kingroot/kinguser/bbc$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beA:Lcom/kingroot/kinguser/bbc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbc;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingroot/kinguser/bbc$2;->beA:Lcom/kingroot/kinguser/bbc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bbc$2;->beA:Lcom/kingroot/kinguser/bbc;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbc;->b(Lcom/kingroot/kinguser/bbc;)V

    .line 92
    return-void
.end method
