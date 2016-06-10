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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 77 of <array 42 of <array 53 of <array 38 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    movl    $40386, %eax            #   0:     if     40386 <= 86408 goto 1_if_true
    movl    $86408, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t11
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  14:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     return t12
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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 70 of <array 65 of <array 7 of <array 74 of <array 25 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 49 of <array 64 of <array 71 of <array 60 of <array 79 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   1:     &()    t12 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   4:     call   t13 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 28 of <array 77 of <array 42 of <array 53 of <array 38 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 51 of <array 66 of <array 51 of <array 48 of <char>>>>>>> %ebp+12 ]
    #   -729486960(%ebp)  729486936  [ $v4       <array 28 of <array 77 of <array 42 of <array 53 of <array 38 of <int>>>>>> %ebp-729486960 ]
    #   -729486961(%ebp)   1  [ $v5       <bool> %ebp-729486961 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $729486952, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $182371738, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-729486960(%ebp)     # local array 'v4': 5 dimensions
    movl    $28,-729486956(%ebp)    #   dimension 1: 28 elements
    movl    $77,-729486952(%ebp)    #   dimension 2: 77 elements
    movl    $42,-729486948(%ebp)    #   dimension 3: 42 elements
    movl    $53,-729486944(%ebp)    #   dimension 4: 53 elements
    movl    $38,-729486940(%ebp)    #   dimension 5: 38 elements

    # function body
    jmp     l_f2_exit              
    movl    $100, %eax              #   1:     param  3 <- 100
    pushl   %eax                   
    movl    $0, %eax                #   2:     param  2 <- 0
    pushl   %eax                   
    movl    $97, %eax               #   3:     if     97 = 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #  11:     param  1 <- t11
    pushl   %eax                   
    leal    -729486960(%ebp), %eax  #  12:     &()    t12 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  14:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_f2_8_if_false         #  15:     goto   8_if_false
    movl    $24276, %eax            #  16:     param  0 <- 24276
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
l_f2_11_while_cond:
    jmp     l_f2_10                 #  19:     goto   10
    jmp     l_f2_11_while_cond      #  20:     goto   11_while_cond
l_f2_10:
    movl    $0, %eax                #  22:     assign v5 <- 0
    movb    %al, -729486961(%ebp)  
    movl    $1, %eax                #  23:     assign v5 <- 1
    movb    %al, -729486961(%ebp)  
    movl    $100, %eax              #  24:     if     100 >= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  27:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_6                  #  30:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $729486952, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t7       <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t8       <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 28 of <array 77 of <array 42 of <array 53 of <array 38 of <int>>>>>>> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   4:     assign v0 <- 0
    movb    %al, v0                
l_test_7_while_cond:
    jmp     l_test_6                #   6:     goto   6
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    movl    $1, %eax                #  10:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  13:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $91551, %eax            #  19:     div    t1 <- 91551, 25008
    movl    $25008, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_exit            
    movl    $67613, %eax            #  22:     div    t2 <- 67613, 38220
    movl    $38220, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t3 <- t2, 45620
    movl    $45620, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t4 <- t3, 98137
    movl    $98137, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t5 <- t4, 55483
    movl    $55483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t6 <- t5, 6498
    movl    $6498, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     assign v1 <- t6
    movl    %eax, v1               
l_test_18_while_cond:
    movl    $99, %eax               #  29:     if     99 >= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  30:     goto   17
l_test_19_while_body:
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  33:     goto   18_while_cond
l_test_17:
    movl    $98, %eax               #  35:     param  3 <- 98
    pushl   %eax                   
    movl    $0, %eax                #  36:     if     0 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_24               #  37:     goto   24
l_test_23:
    movl    $1, %eax                #  39:     assign t7 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_25               #  40:     goto   25
l_test_24:
    movl    $0, %eax                #  42:     assign t7 <- 0
    movb    %al, -45(%ebp)         
l_test_25:
    movzbl  -45(%ebp), %eax         #  44:     param  2 <- t7
    pushl   %eax                   
    movl    $12195, %eax            #  45:     if     12195 # 6378 goto 27
    movl    $6378, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_27              
    jmp     l_test_28               #  46:     goto   28
l_test_27:
    movl    $1, %eax                #  48:     assign t8 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_test_29               #  49:     goto   29
l_test_28:
    movl    $0, %eax                #  51:     assign t8 <- 0
    movb    %al, -46(%ebp)         
l_test_29:
    movzbl  -46(%ebp), %eax         #  53:     param  1 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  54:     &()    t9 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  55:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  56:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <array 28 of <array 77 of <array 42 of <array 53 of <array 38 of <int>>>>>>
    .long    5
    .long   28
    .long   77
    .long   42
    .long   53
    .long   38
    .skip 729486912








    # end of global data section
    #-----------------------------------------

    .end
##################################################
