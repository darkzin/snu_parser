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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 7 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 5 of <array 8 of <array 3 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 = t3 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   8:     return 98
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 5 of <array 8 of <array 3 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 7 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 1 of <array 10 of <array 2 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 5 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -476(%ebp)  444  [ $v3       <array 3 of <array 5 of <array 1 of <array 7 of <array 4 of <bool>>>>>> %ebp-476 ]
    #   -10100(%ebp)  9624  [ $v4       <array 5 of <array 5 of <array 8 of <array 3 of <array 4 of <int>>>>>> %ebp-10100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10088, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2522, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-476(%ebp)           # local array 'v3': 5 dimensions
    movl    $3,-472(%ebp)           #   dimension 1: 3 elements
    movl    $5,-468(%ebp)           #   dimension 2: 5 elements
    movl    $1,-464(%ebp)           #   dimension 3: 1 elements
    movl    $7,-460(%ebp)           #   dimension 4: 7 elements
    movl    $4,-456(%ebp)           #   dimension 5: 4 elements
    movl    $5,-10100(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-10096(%ebp)         #   dimension 1: 5 elements
    movl    $5,-10092(%ebp)         #   dimension 2: 5 elements
    movl    $8,-10088(%ebp)         #   dimension 3: 8 elements
    movl    $3,-10084(%ebp)         #   dimension 4: 3 elements
    movl    $4,-10080(%ebp)         #   dimension 5: 4 elements

    # function body
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
l_f1_8_while_cond:
    movl    $100, %eax              #   8:     if     100 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   9:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  11:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  14:     goto   11
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
    call    WriteLn                 #  17:     call   WriteLn
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_18_while_cond:
    movl    $100, %eax              #  24:     if     100 < 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_19_while_body     
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_24_if_false        #  28:     goto   24_if_false
    jmp     l_f1_22                 #  29:     goto   22
l_f1_24_if_false:
l_f1_22:
    movl    $97, %eax               #  32:     if     97 <= 100 goto 26_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  33:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  35:     goto   25
l_f1_27_if_false:
l_f1_25:
    movl    $1, %eax                #  38:     param  2 <- 1
    pushl   %eax                   
    leal    -10100(%ebp), %eax      #  39:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  1 <- t5
    pushl   %eax                   
    leal    -476(%ebp), %eax        #  41:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  43:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f1_18_while_cond      #  44:     goto   18_while_cond
l_f1_17:
    call    dummyBOOLfunc           #  46:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         

l_f1_exit:
    # epilogue
    addl    $10088, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 5 of <array 8 of <array 3 of <array 4 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 7 of <array 4 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 2 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]
    #   -480(%ebp)  444  [ $v3       <array 3 of <array 5 of <array 1 of <array 7 of <array 4 of <bool>>>>>> %ebp-480 ]
    #   -10104(%ebp)  9624  [ $v4       <array 5 of <array 5 of <array 8 of <array 3 of <array 4 of <int>>>>>> %ebp-10104 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10092, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2523, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-480(%ebp)           # local array 'v3': 5 dimensions
    movl    $3,-476(%ebp)           #   dimension 1: 3 elements
    movl    $5,-472(%ebp)           #   dimension 2: 5 elements
    movl    $1,-468(%ebp)           #   dimension 3: 1 elements
    movl    $7,-464(%ebp)           #   dimension 4: 7 elements
    movl    $4,-460(%ebp)           #   dimension 5: 4 elements
    movl    $5,-10104(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-10100(%ebp)         #   dimension 1: 5 elements
    movl    $5,-10096(%ebp)         #   dimension 2: 5 elements
    movl    $8,-10092(%ebp)         #   dimension 3: 8 elements
    movl    $3,-10088(%ebp)         #   dimension 4: 3 elements
    movl    $4,-10084(%ebp)         #   dimension 5: 4 elements

    # function body
    movl    $72688, %eax            #   0:     assign v1 <- 72688
    movl    %eax, -32(%ebp)        
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $100, %eax              #  10:     if     100 > 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_13                
    jmp     l_f2_14                 #  11:     goto   14
l_f2_13:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  14:     goto   15
l_f2_14:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  18:     param  2 <- t4
    pushl   %eax                   
    leal    -10104(%ebp), %eax      #  19:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  1 <- t5
    pushl   %eax                   
    leal    -480(%ebp), %eax        #  21:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  23:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  24:     if     99 > t7 goto 9
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  25:     goto   10
l_f2_9:
    movl    $1, %eax                #  27:     assign t8 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_11                 #  28:     goto   11
l_f2_10:
    movl    $0, %eax                #  30:     assign t8 <- 0
    movb    %al, -26(%ebp)         
l_f2_11:
    movzbl  -26(%ebp), %eax         #  32:     assign v2 <- t8
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $10092, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $40180, %eax            #   1:     if     40180 <= 86006 goto 2_if_true
    movl    $86006, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $0, %eax                #   5:     if     0 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $18652, %eax            #  11:     if     18652 # 91550 goto 11
    movl    $91550, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_11              
    jmp     l_test_12               #  12:     goto   12
l_test_11:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  15:     goto   13
l_test_12:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  19:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  21:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_1                #  22:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
