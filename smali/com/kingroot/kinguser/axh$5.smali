.class Lcom/kingroot/kinguser/axh$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axh;->c(Lcom/kingroot/kinguser/aqc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYH:Lcom/kingroot/kinguser/axh;

.field final synthetic aYJ:Lcom/kingroot/kinguser/aqh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh;Lcom/kingroot/kinguser/aqh;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$5;->aYH:Lcom/kingroot/kinguser/axh;

    iput-object p2, p0, Lcom/kingroot/kinguser/axh$5;->aYJ:Lcom/kingroot/kinguser/aqh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$5;->aYJ:Lcom/kingroot/kinguser/aqh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->MJ()Z

    .line 381
    return-void
.end method
