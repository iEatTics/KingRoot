.class abstract Lcom/kingroot/kinguser/bjd$a;
.super Lcom/kingroot/kinguser/px;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/kingroot/kinguser/px;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bjd$1;)V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/animation/Animation;I)V
.end method
