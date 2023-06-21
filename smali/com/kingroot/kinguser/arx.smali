.class public Lcom/kingroot/kinguser/arx;
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
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected a(ILcom/kingroot/kinguser/asd;)Lcom/kingroot/kinguser/asc;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 12
    new-instance v0, Lcom/kingroot/kinguser/asb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asb;-><init>()V

    .line 17
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 14
    new-instance v0, Lcom/kingroot/kinguser/arz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/arz;-><init>()V

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
