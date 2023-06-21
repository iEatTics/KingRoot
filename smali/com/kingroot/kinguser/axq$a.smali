.class abstract Lcom/kingroot/kinguser/axq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;

.field protected bbk:Z


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$a;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/axq$1;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axq$a;-><init>(Lcom/kingroot/kinguser/axq;)V

    return-void
.end method


# virtual methods
.method public dx(Z)V
    .locals 0

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axq$a;->bbk:Z

    .line 739
    return-void
.end method
