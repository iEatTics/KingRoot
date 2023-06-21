.class public abstract Lcom/kingroot/kinguser/alf$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field protected akC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected akE:Lcom/kingroot/kinguser/apv$b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/alf$a;->akC:Ljava/util/HashMap;

    .line 131
    new-instance v0, Lcom/kingroot/kinguser/alf$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alf$a$1;-><init>(Lcom/kingroot/kinguser/alf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alf$a;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 158
    return-void
.end method


# virtual methods
.method abstract a(Lcom/kingroot/kinguser/ame;)V
.end method
