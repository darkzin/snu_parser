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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 37 of <array 96 of <array 45 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #    -20(%ebp)   1  [ $v2       <bool> %ebp-20 ]

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
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $19077, %eax            #   3:     add    t1 <- 19077, 78904
    movl    $78904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $62787, %eax            #   4:     if     62787 # t1 goto 5
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f0_7:
    movzbl  -17(%ebp), %eax         #  12:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    movl    $93693, %eax            #  17:     if     93693 = 70329 goto 11_while_body
    movl    $70329, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_while_body:
    movl    $97, %eax               #  20:     if     97 = 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_14                
    jmp     l_f0_15                 #  21:     goto   15
l_f0_14:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_16                 #  24:     goto   16
l_f0_15:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f0_16:
    movzbl  -18(%ebp), %eax         #  28:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_10_while_cond      #  29:     goto   10_while_cond
l_f0_9:
    movl    $99, %eax               #  31:     if     99 > 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_19                
    jmp     l_f0_20                 #  32:     goto   20
l_f0_19:
    movl    $1, %eax                #  34:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_21                 #  35:     goto   21
l_f0_20:
    movl    $0, %eax                #  37:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f0_21:
    movzbl  -19(%ebp), %eax         #  39:     assign v2 <- t4
    movb    %al, -20(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 33 of <array 37 of <array 96 of <array 45 of <array 17 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <char> %ebp-19 ]
    #   -89670284(%ebp)  89670264  [ $v3       <array 33 of <array 37 of <array 96 of <array 45 of <array 17 of <bool>>>>>> %ebp-89670284 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $89670272, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22417568, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-89670284(%ebp)      # local array 'v3': 5 dimensions
    movl    $33,-89670280(%ebp)     #   dimension 1: 33 elements
    movl    $37,-89670276(%ebp)     #   dimension 2: 37 elements
    movl    $96,-89670272(%ebp)     #   dimension 3: 96 elements
    movl    $45,-89670268(%ebp)     #   dimension 4: 45 elements
    movl    $17,-89670264(%ebp)     #   dimension 5: 17 elements

    # function body
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -19(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    leal    -89670284(%ebp), %eax   #   2:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t2 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  12:     return t3
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $89670272, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 33 of <array 37 of <array 96 of <array 45 of <array 17 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #   -89670288(%ebp)  89670264  [ $v2       <array 33 of <array 37 of <array 96 of <array 45 of <array 17 of <bool>>>>>> %ebp-89670288 ]
    #   -89670289(%ebp)   1  [ $v3       <char> %ebp-89670289 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $89670280, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22417570, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-89670288(%ebp)      # local array 'v2': 5 dimensions
    movl    $33,-89670284(%ebp)     #   dimension 1: 33 elements
    movl    $37,-89670280(%ebp)     #   dimension 2: 37 elements
    movl    $96,-89670276(%ebp)     #   dimension 3: 96 elements
    movl    $45,-89670272(%ebp)     #   dimension 4: 45 elements
    movl    $17,-89670268(%ebp)     #   dimension 5: 17 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   7:     return t1
    jmp     l_f2_exit              
l_f2_8_while_cond:
    leal    -89670288(%ebp), %eax   #   9:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  11:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  12:     if     t3 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  13:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  15:     goto   8_while_cond
l_f2_7:
l_f2_11_while_cond:
    movl    $52150, %eax            #  18:     if     52150 > 49451 goto 12_while_body
    movl    $49451, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  19:     goto   10
l_f2_12_while_body:
    movl    $97, %eax               #  21:     if     97 >= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  22:     goto   16_if_false
l_f2_15_if_true:
    movl    $100, %eax              #  24:     assign v3 <- 100
    movb    %al, -89670289(%ebp)   
l_f2_20_while_cond:
    jmp     l_f2_19                 #  26:     goto   19
    jmp     l_f2_20_while_cond      #  27:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_14                 #  29:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_11_while_cond      #  32:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $89670280, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $99, %eax               #   0:     if     99 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    movl    $44523, %eax            #  10:     if     44523 = 69888 goto 9_if_true
    movl    $69888, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8                #  15:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_5                #  18:     goto   5
l_test_7_if_false:
l_test_5:
l_test_15_while_cond:
    jmp     l_test_14               #  22:     goto   14
    jmp     l_test_14               #  23:     goto   14
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    movl    $1, %eax                #  28:     assign v0 <- 1
    movb    %al, v0                
l_test_23_while_cond:
    movl    $96357, %eax            #  30:     if     96357 > 85933 goto 24_while_body
    movl    $85933, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  31:     goto   22
l_test_24_while_body:
    movl    $90184, %eax            #  33:     if     90184 # 35071 goto 27_if_true
    movl    $35071, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_27_if_true      
    jmp     l_test_28_if_false      #  34:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  36:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_23_while_cond    #  39:     goto   23_while_cond
l_test_22:

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
