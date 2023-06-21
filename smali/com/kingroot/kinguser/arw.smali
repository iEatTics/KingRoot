.class public Lcom/kingroot/kinguser/arw;
.super Lcom/kingroot/kinguser/asc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/kingroot/kinguser/asc;-><init>()V

    return-void
.end method


# virtual methods
.method public NJ()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x5

    return v0
.end method

.method protected a(ILcom/kingroot/kinguser/asd;)Lcom/kingroot/kinguser/asc;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/asb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asb;-><init>()V

    .line 14
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
