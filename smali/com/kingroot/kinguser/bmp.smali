.class public final Lcom/kingroot/kinguser/bmp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bCg:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bmp;->bCg:Ljava/lang/Boolean;

    return-void
.end method

.method public static V()I
    .locals 1

    .prologue
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
