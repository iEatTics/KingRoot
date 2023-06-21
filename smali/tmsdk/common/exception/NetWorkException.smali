.class public Ltmsdk/common/exception/NetWorkException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private errCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Ltmsdk/common/exception/NetWorkException;->errCode:I

    .line 36
    return-void
.end method
