.class Lcom/kingroot/kinguser/oj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final yf:Lcom/kingroot/kinguser/oj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/oj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/oj;-><init>(Lcom/kingroot/kinguser/ok;)V

    sput-object v0, Lcom/kingroot/kinguser/oj$a;->yf:Lcom/kingroot/kinguser/oj;

    return-void
.end method

.method static synthetic fY()Lcom/kingroot/kinguser/oj;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/oj$a;->yf:Lcom/kingroot/kinguser/oj;

    return-object v0
.end method
