.class public abstract Lcom/kingroot/kinguser/vl;
.super Lcom/kingroot/kinguser/cbe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/cbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final dd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/kingroot/kinguser/vl$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/vl$2;-><init>(Lcom/kingroot/kinguser/vl;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vl$2;->X(Z)Z

    .line 52
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/vl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/vl$1;-><init>(Lcom/kingroot/kinguser/vl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vl$1;->X(Z)Z

    .line 37
    return-void
.end method
