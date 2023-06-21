.class public Lcom/kingroot/kinguser/bwf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bQW:Ljava/lang/String;

.field public bQX:Ljava/lang/String;

.field public errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/kingroot/kinguser/bwf;->bQW:Ljava/lang/String;

    .line 31
    iput p1, p0, Lcom/kingroot/kinguser/bwf;->errorCode:I

    .line 32
    iput-object p3, p0, Lcom/kingroot/kinguser/bwf;->bQX:Ljava/lang/String;

    .line 33
    return-void
.end method
