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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 4 of <array 3 of <array 3 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 4 of <array 1 of <array 4 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    call    dummyINTfunc            #   2:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t8 <- t7, 52080
    movl    $52080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $13087, %eax            #   4:     if     13087 # t8 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    movl    $98, %eax               #  10:     if     98 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    movl    $1, %eax                #  13:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  14:     goto   10
l_f0_10:
    movl    $67335, %eax            #  16:     if     67335 < 70783 goto 14
    movl    $70783, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14                
    jmp     l_f0_15                 #  17:     goto   15
l_f0_14:
    movl    $1, %eax                #  19:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_16                 #  20:     goto   16
l_f0_15:
    movl    $0, %eax                #  22:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_16:
    movzbl  -25(%ebp), %eax         #  24:     return t9
    jmp     l_f0_exit              
l_f0_19_while_cond:
    movl    $1, %eax                #  26:     if     1 # 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_20_while_body     
    jmp     l_f0_18                 #  27:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  29:     goto   19_while_cond
l_f0_18:
    movl    $0, %eax                #  31:     if     0 = 0 goto 23_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_23_if_true        
    jmp     l_f0_24_if_false        #  32:     goto   24_if_false
l_f0_23_if_true:
    jmp     l_f0_22                 #  34:     goto   22
l_f0_24_if_false:
l_f0_22:
    jmp     l_f0_26                 #  37:     goto   26
l_f0_26:
    jmp     l_f0_6_while_cond       #  39:     goto   6_while_cond
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 10 of <array 6 of <char>>>>>>> %ebp+12 ]
    #    -13(%ebp)   1  [ $v4       <bool> %ebp-13 ]

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
l_f1_4_while_cond:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   2:     goto   6
    jmp     l_f1_7_while_cond       #   3:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
    jmp     l_f1_0                  #   6:     goto   0
l_f1_0:
    movl    $98232, %eax            #   8:     if     98232 <= 12121 goto 10_if_true
    movl    $12121, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
l_f1_10_if_true:
    movl    $98, %eax               #  11:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $100, %eax              #  15:     if     100 >= 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  16:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_20_if_false        #  18:     goto   20_if_false
l_f1_22_while_cond:
    jmp     l_f1_22_while_cond      #  20:     goto   22_while_cond
    jmp     l_f1_26_if_false        #  21:     goto   26_if_false
    jmp     l_f1_24                 #  22:     goto   24
l_f1_26_if_false:
l_f1_24:
    movl    $99, %eax               #  25:     assign v2 <- 99
    movb    %al, 8(%ebp)           
    movl    $97, %eax               #  26:     return 97
    jmp     l_f1_exit              
    movl    $0, %eax                #  27:     assign v4 <- 0
    movb    %al, -13(%ebp)         
l_f1_31_while_cond:
    jmp     l_f1_30                 #  29:     goto   30
    jmp     l_f1_31_while_cond      #  30:     goto   31_while_cond
l_f1_30:
    movl    $97, %eax               #  32:     return 97
    jmp     l_f1_exit              
    movl    $0, %eax                #  33:     assign v4 <- 0
    movb    %al, -13(%ebp)         
    jmp     l_f1_18                 #  34:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_14                 #  37:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 10 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 10 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 8 of <array 1 of <array 1 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #   -10852(%ebp)  10824  [ $v4       <array 10 of <array 9 of <array 2 of <array 10 of <array 6 of <char>>>>>> %ebp-10852 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10840, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2710, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10852(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-10848(%ebp)        #   dimension 1: 10 elements
    movl    $9,-10844(%ebp)         #   dimension 2: 9 elements
    movl    $2,-10840(%ebp)         #   dimension 3: 2 elements
    movl    $10,-10836(%ebp)        #   dimension 4: 10 elements
    movl    $6,-10832(%ebp)         #   dimension 5: 6 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $100, %eax              #   3:     if     100 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    leal    -10852(%ebp), %eax      #   8:     &()    t7 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  1 <- t7
    pushl   %eax                   
    movl    $99, %eax               #  10:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  11:     call   t8 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  14:     call   t9 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $10840, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t1 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
l_test_6_while_cond:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     if     t2 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    call    WriteLn                 #  13:     call   WriteLn
    movl    $0, %eax                #  14:     if     0 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_12               #  18:     goto   12
l_test_11:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_12:
    movzbl  -16(%ebp), %eax         #  22:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $74946, %eax            #  25:     assign v1 <- 74946
    movl    %eax, v1               
    jmp     l_test_6_while_cond     #  26:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    ReadInt                 #  30:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t5 <- t4, 71233
    movl    $71233, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     assign v1 <- t5
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
