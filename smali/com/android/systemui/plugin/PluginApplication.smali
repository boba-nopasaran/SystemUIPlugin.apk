.class public Lcom/android/systemui/plugin/PluginApplication;
.super Landroid/app/Application;
.source "PluginApplication.java"


# static fields
.field private static mLeftBar:Landroid/view/View;

.field private static mRightBar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftBar(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugin/PluginApplication;->mLeftBar:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugin/LeftBar;

    invoke-direct {v0, p1}, Lcom/android/systemui/plugin/LeftBar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/plugin/PluginApplication;->mLeftBar:Landroid/view/View;

    :cond_0
    sget-object v0, Lcom/android/systemui/plugin/PluginApplication;->mLeftBar:Landroid/view/View;

    return-object v0
.end method

.method public getRightBar(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugin/PluginApplication;->mRightBar:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugin/RightBar;

    invoke-direct {v0, p1}, Lcom/android/systemui/plugin/RightBar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/plugin/PluginApplication;->mRightBar:Landroid/view/View;

    :cond_0
    sget-object v0, Lcom/android/systemui/plugin/PluginApplication;->mRightBar:Landroid/view/View;

    return-object v0
.end method
