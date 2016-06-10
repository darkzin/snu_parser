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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 80 of <array 24 of <array 98 of <array 9 of <char>>>>>>> %ebp+8 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              

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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <bool> %ebp-13 ]
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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $34949, %eax            #   2:     if     34949 > 22567 goto 3_while_body
    movl    $22567, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   6:     goto   5
    jmp     l_f1_10_if_false        #   7:     goto   10_if_false
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
    movl    $56693, %eax            #  15:     assign v2 <- 56693
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_4:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    movl    $88950, %eax            #   9:     sub    t2 <- 88950, 44159
    movl    $44159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t3 <- t2, 84558
    movl    $84558, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t3 >= 17813 goto 8_while_body
    movl    $17813, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_while_body:
    movl    $98, %eax               #  14:     if     98 < 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_13:
    movzbl  -21(%ebp), %eax         #  22:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    jmp     l_f2_7_while_cond       #  23:     goto   7_while_cond
l_f2_6:
    movl    $1, %eax                #  25:     if     1 # 0 goto 16_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  26:     goto   17_if_false
l_f2_16_if_true:
    call    dummyCHARfunc           #  28:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $1, %eax                #  29:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f2_15                 #  30:     goto   15
l_f2_17_if_false:
l_f2_15:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 72 of <array 80 of <array 24 of <array 98 of <array 9 of <char>>>>>>> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
    jmp     l_test_exit            
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    leal    v0, %eax                #   8:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  10:     call   f0
    addl    $4, %esp               
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  12:     goto   13_while_cond
    movl    $100, %eax              #  13:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_9                #  14:     goto   9
l_test_9:
    movl    $6384, %eax             #  16:     if     6384 = 17638 goto 17_if_true
    movl    $17638, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  17:     goto   18_if_false
l_test_17_if_true:
    movl    $97, %eax               #  19:     if     97 <= 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  20:     goto   22_if_false
l_test_21_if_true:
l_test_25_while_cond:
    jmp     l_test_24               #  23:     goto   24
    jmp     l_test_25_while_cond    #  24:     goto   25_while_cond
l_test_24:
    jmp     l_test_29_if_false      #  26:     goto   29_if_false
    jmp     l_test_27               #  27:     goto   27
l_test_29_if_false:
l_test_27:
    movl    $75294, %eax            #  30:     assign v2 <- 75294
    movl    %eax, v2               
    jmp     l_test_20               #  31:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_16               #  34:     goto   16
l_test_18_if_false:
l_test_16:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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

    # scope: test
v0:                                 # <array 72 of <array 80 of <array 24 of <array 98 of <array 9 of <char>>>>>>
    .long    5
    .long   72
    .long   80
    .long   24
    .long   98
    .long    9
    .skip 121927680
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
