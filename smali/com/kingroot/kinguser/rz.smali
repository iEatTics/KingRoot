.class public Lcom/kingroot/kinguser/rz;
.super Lcom/kingroot/kinguser/sa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "delete db exception"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/sa;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 23
    const-string v0, "delete db exception"

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/sa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method
