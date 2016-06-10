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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 66 of <array 56 of <array 53 of <array 96 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 = t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_5                  #   7:     goto   5
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t5 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #  10:     goto   6
l_f0_5:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_7                  #  13:     goto   7
l_f0_6:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_7:
    movzbl  -15(%ebp), %eax         #  17:     return t6
    jmp     l_f0_exit              
    call    dummyINTfunc            #  18:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     sub    t8 <- t7, 49834
    movl    $49834, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $27213, %eax            #  20:     if     27213 <= t8 goto 10
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  21:     goto   11
l_f0_10:
    movl    $1, %eax                #  23:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  24:     goto   12
l_f0_11:
    movl    $0, %eax                #  26:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  28:     return t9
    jmp     l_f0_exit              

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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 59 of <array 19 of <array 72 of <array 19 of <array 9 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    movl    $100, %eax              #   1:     assign v3 <- 100
    movb    %al, 16(%ebp)          
    call    dummyProcedure          #   2:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 80 of <array 66 of <array 56 of <array 53 of <array 96 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 30 of <array 74 of <array 76 of <array 67 of <int>>>>>>> %ebp+16 ]
    #   -1504419912(%ebp)  1504419864  [ $v4       <array 80 of <array 66 of <array 56 of <array 53 of <array 96 of <bool>>>>>> %ebp-1504419912 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1504419900, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $376104975, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1504419912(%ebp)    # local array 'v4': 5 dimensions
    movl    $80,-1504419908(%ebp)   #   dimension 1: 80 elements
    movl    $66,-1504419904(%ebp)   #   dimension 2: 66 elements
    movl    $56,-1504419900(%ebp)   #   dimension 3: 56 elements
    movl    $53,-1504419896(%ebp)   #   dimension 4: 53 elements
    movl    $96,-1504419892(%ebp)   #   dimension 5: 96 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    leal    -1504419912(%ebp), %eax #   1:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     param  2 <- t5
    pushl   %eax                   
    movl    $3214, %eax             #   3:     div    t6 <- 3214, 39187
    movl    $39187, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t7 <- t6, 20010
    movl    $20010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     add    t8 <- t7, 3023
    movl    $3023, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t9 <- t8, 90876
    movl    $90876, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t10 <- t9, 58514
    movl    $58514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  1 <- t10
    pushl   %eax                   
    movl    $65124, %eax            #   9:     if     65124 <= 63554 goto 2
    movl    $63554, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $1, %eax                #  12:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #  13:     goto   4
l_f2_3:
    movl    $0, %eax                #  15:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  17:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  18:     call   t12 <- f0
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
l_f2_7_while_cond:
    movl    $77891, %eax            #  20:     if     77891 <= 51517 goto 8_while_body
    movl    $51517, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  21:     goto   6
l_f2_8_while_body:
l_f2_11_while_cond:
    movl    $98, %eax               #  24:     if     98 <= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  25:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  27:     goto   11_while_cond
l_f2_10:
    call    dummyINTfunc            #  29:     call   t13 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $96761, %eax            #  30:     return 96761
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  31:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1504419900, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    movl    $76021, %eax            #   1:     if     76021 <= 60817 goto 2_if_true
    movl    $60817, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    movl    $71199, %eax            #   8:     if     71199 # 2207 goto 9_if_true
    movl    $2207, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, v1                
l_test_14_while_cond:
    jmp     l_test_13               #  16:     goto   13
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
l_test_13:
l_test_17_while_cond:
    movl    $99, %eax               #  20:     if     99 = 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  21:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
l_test_16:
    call    dummyBOOLfunc           #  25:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #  26:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  28:     call   WriteStr
    addl    $4, %esp               
    movl    $89812, %eax            #  29:     if     89812 <= 54644 goto 23_if_true
    movl    $54644, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  32:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            
l_test_28_while_cond:
    movl    $90368, %eax            #  37:     if     90368 >= 71540 goto 29_while_body
    movl    $71540, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_29_while_body   
    jmp     l_test_27               #  38:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  40:     goto   28_while_cond
l_test_27:
    jmp     l_test_exit            
    jmp     l_test_1                #  43:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    movl    $1, %eax                #  47:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_40               #  48:     goto   40
    movl    $0, %eax                #  49:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_40:
    movzbl  -21(%ebp), %eax         #  51:     if     t2 = 1 goto 34
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_34              
    jmp     l_test_35               #  52:     goto   35
l_test_34:
    movl    $1, %eax                #  54:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_36               #  55:     goto   36
l_test_35:
    movl    $0, %eax                #  57:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_36:
    movzbl  -22(%ebp), %eax         #  59:     assign v1 <- t3
    movb    %al, v1                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
