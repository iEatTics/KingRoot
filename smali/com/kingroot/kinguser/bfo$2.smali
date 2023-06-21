.class Lcom/kingroot/kinguser/bfo$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnc:Lcom/kingroot/kinguser/bfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/bfo$2;->bnc:Lcom/kingroot/kinguser/bfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfo$2;->bnc:Lcom/kingroot/kinguser/bfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfo;->a(Lcom/kingroot/kinguser/bfo;)V

    .line 60
    return-void
.end method
