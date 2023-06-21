.class public abstract Lcom/kingroot/kinguser/asc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract NJ()I
.end method

.method protected abstract a(ILcom/kingroot/kinguser/asd;)Lcom/kingroot/kinguser/asc;
.end method

.method public b(ILcom/kingroot/kinguser/asd;)Z
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/asc;->a(ILcom/kingroot/kinguser/asd;)Lcom/kingroot/kinguser/asc;

    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/asd;->a(Lcom/kingroot/kinguser/asc;)V

    .line 19
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
