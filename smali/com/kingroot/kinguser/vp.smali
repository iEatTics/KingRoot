.class public Lcom/kingroot/kinguser/vp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Le:[[I


# instance fields
.field public Lf:I

.field public Lg:J

.field public desc:Ljava/lang/String;

.field public errorCode:I

.field public gN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [[I

    sput-object v0, Lcom/kingroot/kinguser/vp;->Le:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
