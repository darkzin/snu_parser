##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_9_if_false         #   9:     goto   9_if_false
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_10                 #  13:     goto   10
l_f0_10:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
l_f0_15_while_cond:
    jmp     l_f0_16_while_body      #  22:     goto   16_while_body
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     if     t2 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16_while_body     
    jmp     l_f0_14                 #  25:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  27:     goto   15_while_cond
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $97, %eax               #   2:     if     97 < 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    movl    $99, %eax               #   7:     assign v1 <- 99
    movb    %al, -13(%ebp)         
    movl    $39241, %eax            #   8:     assign v2 <- 39241
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10_if_true         #  12:     goto   10_if_true
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_9:
    movl    $0, %eax                #  16:     if     0 = 0 goto 16_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  17:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_19                 #  19:     goto   19
l_f1_19:
l_f1_23_while_cond:
    jmp     l_f1_23_while_cond      #  22:     goto   23_while_cond
    movl    $1, %eax                #  23:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f1_15                 #  24:     goto   15
l_f1_17_if_false:
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f2_5_while_cond:
    movl    $93167, %eax            #   4:     if     93167 = 68019 goto 6_while_body
    movl    $68019, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $97, %eax               #   9:     if     97 > 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $67173, %eax            #  15:     assign v0 <- 67173
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  16:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    movl    $82364, %eax            #  17:     if     82364 > 96528 goto 15
    movl    $96528, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15                
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  25:     assign v1 <- t1
    movb    %al, -21(%ebp)         
    jmp     l_f2_1                  #  26:     goto   1
l_f2_1:
    movl    $97, %eax               #  28:     if     97 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  29:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_exit              
    movl    $99, %eax               #  32:     param  1 <- 99
    pushl   %eax                   
    movl    $47381, %eax            #  33:     if     47381 = 72545 goto 25
    movl    $72545, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_25                
    jmp     l_f2_26                 #  34:     goto   26
l_f2_25:
    movl    $1, %eax                #  36:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_27                 #  37:     goto   27
l_f2_26:
    movl    $0, %eax                #  39:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f2_27:
    movzbl  -15(%ebp), %eax         #  41:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  42:     call   f0
    addl    $8, %esp               
l_f2_30_while_cond:
    movl    $98, %eax               #  44:     if     98 # 98 goto 31_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_31_while_body     
    jmp     l_f2_29                 #  45:     goto   29
l_f2_31_while_body:
    jmp     l_f2_30_while_cond      #  47:     goto   30_while_cond
l_f2_29:
l_f2_34_while_cond:
    movl    $58606, %eax            #  50:     if     58606 = 85366 goto 35_while_body
    movl    $85366, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_35_while_body     
    jmp     l_f2_33                 #  51:     goto   33
l_f2_35_while_body:
    jmp     l_f2_34_while_cond      #  53:     goto   34_while_cond
l_f2_33:
    movl    $31697, %eax            #  55:     assign v0 <- 31697
    movl    %eax, -20(%ebp)        
    jmp     l_f2_19                 #  56:     goto   19
l_f2_21_if_false:
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
l_test_1_if_true:
    jmp     l_test_0                #   2:     goto   0
l_test_0:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $100, %eax              #   6:     if     100 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  10:     goto   11_while_cond
    jmp     l_test_13               #  11:     goto   13
l_test_13:
    movl    $100, %eax              #  13:     if     100 > 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  14:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  16:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_7_while_cond     #  19:     goto   7_while_cond
l_test_6:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
