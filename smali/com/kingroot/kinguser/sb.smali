.class public Lcom/kingroot/kinguser/sb;
.super Lcom/kingroot/kinguser/sa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "insert db exception"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/sa;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "insert db exception"

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/sa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
