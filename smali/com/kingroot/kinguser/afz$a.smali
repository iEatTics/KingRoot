.class Lcom/kingroot/kinguser/afz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final ajA:Lcom/kingroot/kinguser/afz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/afz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/afz;-><init>(Lcom/kingroot/kinguser/afz$1;)V

    sput-object v0, Lcom/kingroot/kinguser/afz$a;->ajA:Lcom/kingroot/kinguser/afz;

    return-void
.end method

.method static synthetic vI()Lcom/kingroot/kinguser/afz;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/afz$a;->ajA:Lcom/kingroot/kinguser/afz;

    return-object v0
.end method
