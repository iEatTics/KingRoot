.class public Lcom/kingroot/kinguser/arz;
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
    .line 21
    const/4 v0, 0x2

    return v0
.end method

.method protected a(ILcom/kingroot/kinguser/asd;)Lcom/kingroot/kinguser/asc;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/ary;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ary;-><init>()V

    .line 16
    :goto_0
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 13
    new-instance v0, Lcom/kingroot/kinguser/asb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asb;-><init>()V

    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
