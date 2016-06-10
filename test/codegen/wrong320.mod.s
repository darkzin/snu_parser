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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    leal    _str_1, %eax            #   2:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 4 of <array 6 of <array 9 of <array 4 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t3 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  11:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  12:     return t5
    jmp     l_f1_exit              
    call    WriteLn                 #  13:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 4 of <array 6 of <array 9 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 10 of <array 2 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #   -3508(%ebp)  3480  [ $v1       <array 1 of <array 4 of <array 6 of <array 9 of <array 4 of <int>>>>>> %ebp-3508 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3496, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $874, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3508(%ebp)          # local array 'v1': 5 dimensions
    movl    $1,-3504(%ebp)          #   dimension 1: 1 elements
    movl    $4,-3500(%ebp)          #   dimension 2: 4 elements
    movl    $6,-3496(%ebp)          #   dimension 3: 6 elements
    movl    $9,-3492(%ebp)          #   dimension 4: 9 elements
    movl    $4,-3488(%ebp)          #   dimension 5: 4 elements

    # function body
l_f2_1_while_cond:
    movl    $34811, %eax            #   1:     if     34811 > 29620 goto 2_while_body
    movl    $29620, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $7228, %eax             #   4:     if     7228 > 70570 goto 5_if_true
    movl    $70570, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #  16:     if     99 >= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  19:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_20_while_cond:
    movl    $99, %eax               #  23:     if     99 = 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  24:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  26:     goto   20_while_cond
l_f2_19:
    movl    $23853, %eax            #  28:     if     23853 > 53681 goto 24_if_true
    movl    $53681, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  29:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  31:     goto   23
l_f2_25_if_false:
l_f2_23:
    movl    $100, %eax              #  34:     if     100 >= 99 goto 28
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_28                
    jmp     l_f2_29                 #  35:     goto   29
l_f2_28:
    movl    $1, %eax                #  37:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_30                 #  38:     goto   30
l_f2_29:
    movl    $0, %eax                #  40:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_30:
    movzbl  -13(%ebp), %eax         #  42:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  43:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  44:     if     99 # 99 goto 33
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_33                
    jmp     l_f2_34                 #  45:     goto   34
l_f2_33:
    movl    $1, %eax                #  47:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_35                 #  48:     goto   35
l_f2_34:
    movl    $0, %eax                #  50:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_35:
    movzbl  -15(%ebp), %eax         #  52:     return t4
    jmp     l_f2_exit              
    movl    $98, %eax               #  53:     if     98 <= 99 goto 38_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_38_if_true        
    jmp     l_f2_39_if_false        #  54:     goto   39_if_false
l_f2_38_if_true:
    jmp     l_f2_37                 #  56:     goto   37
l_f2_39_if_false:
l_f2_37:
    jmp     l_f2_11                 #  59:     goto   11
l_f2_11:
l_f2_42_while_cond:
    jmp     l_f2_41                 #  62:     goto   41
    call    ReadInt                 #  63:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    leal    -3508(%ebp), %eax       #  64:     &()    t6 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  65:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  66:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  67:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_f2_42_while_cond      #  68:     goto   42_while_cond
l_f2_41:

l_f2_exit:
    # epilogue
    addl    $3496, %esp             # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_8_while_cond:
    movl    $45580, %eax            #   5:     if     45580 = 35875 goto 9_while_body
    movl    $35875, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   6:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #   8:     goto   8_while_cond
l_test_7:
    jmp     l_test_4_while_cond     #  10:     goto   4_while_cond
l_test_3:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  16:     if     100 # 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13              
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  24:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_20_if_false      #  26:     goto   20_if_false
    jmp     l_test_exit            
    jmp     l_test_18               #  28:     goto   18
l_test_20_if_false:
l_test_18:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
