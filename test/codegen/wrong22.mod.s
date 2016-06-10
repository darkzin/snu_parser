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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 1 of <array 4 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    jmp     l_f0_5                  #   2:     goto   5
l_f0_5:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
    call    WriteLn                 #   6:     call   WriteLn
    call    dummyINTfunc            #   7:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     if     98 = 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $47609, %eax            #   6:     assign v1 <- 47609
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   7:     goto   0
l_f1_0:
    movl    $97, %eax               #   9:     if     97 > 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9                 
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_11:
    movzbl  -13(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              
l_f1_14_while_cond:
    movl    $84602, %eax            #  19:     if     84602 >= 52558 goto 15_while_body
    movl    $52558, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_15_while_body     
    jmp     l_f1_13                 #  20:     goto   13
l_f1_15_while_body:
l_f1_18_while_cond:
    movl    $98, %eax               #  23:     if     98 > 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_19_while_body     
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  26:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_14_while_cond      #  28:     goto   14_while_cond
l_f1_13:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 8 of <array 10 of <array 1 of <array 9 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t7 <- t6, 42844
    movl    $42844, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t8 <- t7, 63150
    movl    $63150, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     if     t8 > 96664 goto 1
    movl    $96664, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f2_3:
    movzbl  -29(%ebp), %eax         #  11:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  12:     goto   7
    jmp     l_f2_7                  #  13:     goto   7
    movl    $1, %eax                #  14:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $0, %eax                #  17:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  19:     return t10
    jmp     l_f2_exit              
    jmp     l_f2_21                 #  20:     goto   21
    jmp     l_f2_21                 #  21:     goto   21
    jmp     l_f2_16                 #  22:     goto   16
l_f2_21:
    jmp     l_f2_16                 #  24:     goto   16
    jmp     l_f2_17                 #  25:     goto   17
l_f2_16:
    movl    $1, %eax                #  27:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_18                 #  28:     goto   18
l_f2_17:
    movl    $0, %eax                #  30:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_18:
    movzbl  -14(%ebp), %eax         #  32:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 8 of <array 10 of <array 1 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 = 36776 goto 3_while_body
    movl    $36776, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $0, %eax                #   6:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
    jmp     l_test_exit            
    movl    $34649, %eax            #  14:     if     34649 >= 75700 goto 14_if_true
    movl    $75700, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  17:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_2_while_cond     #  20:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    f1                      #  23:     call   t2 <- f1
    movb    %al, -21(%ebp)         
    leal    v1, %eax                #  24:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  1 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  26:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #  27:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  28:     if     98 > 97 goto 21
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_21              
    jmp     l_test_22               #  29:     goto   22
l_test_21:
    movl    $1, %eax                #  31:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_23               #  32:     goto   23
l_test_22:
    movl    $0, %eax                #  34:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_23:
    movzbl  -30(%ebp), %eax         #  36:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 3 of <array 8 of <array 10 of <array 1 of <array 9 of <int>>>>>>
    .long    5
    .long    3
    .long    8
    .long   10
    .long    1
    .long    9
    .skip 8640








    # end of global data section
    #-----------------------------------------

    .end
##################################################
