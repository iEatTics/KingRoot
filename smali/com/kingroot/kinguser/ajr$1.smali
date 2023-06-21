.class Lcom/kingroot/kinguser/ajr$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aum:Lcom/kingroot/kinguser/ajr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ajr;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/ajr$1;->aum:Lcom/kingroot/kinguser/ajr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zu()V

    .line 75
    return-void
.end method
