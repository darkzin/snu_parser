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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    movl    $97, %eax               #   2:     if     97 > 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $34490, %eax            #   5:     assign v2 <- 34490
    movl    %eax, -24(%ebp)        
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $99, %eax               #   8:     if     99 >= 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #   9:     goto   8
l_f0_7:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_9                  #  12:     goto   9
l_f0_8:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_9:
    movzbl  -17(%ebp), %eax         #  16:     assign v3 <- t4
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 40 of <array 48 of <array 26 of <array 70 of <array 34 of <bool>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v5       <bool> %ebp-16 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $7302, %eax             #   7:     if     7302 <= 1302 goto 5_if_true
    movl    $1302, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
    movl    $0, %eax                #  10:     return 0
    jmp     l_f1_exit              
    movl    $69702, %eax            #  11:     if     69702 <= 18681 goto 10
    movl    $18681, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #  12:     goto   11
l_f1_10:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  19:     assign v5 <- t4
    movb    %al, -16(%ebp)         
    jmp     l_f1_4                  #  20:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_16_if_false        #  23:     goto   16_if_false
    call    f0                      #  24:     call   t5 <- f0
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  25:     goto   14
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t5       <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9177, %eax             #   0:     sub    t3 <- 9177, 87790
    movl    $87790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $28429, %eax            #   1:     div    t4 <- 28429, 65706
    movl    $65706, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #   2:     if     t3 > t4 goto 1
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -49(%ebp)         
l_f2_3:
    movzbl  -49(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
    movl    $33652, %eax            #  11:     div    t6 <- 33652, 48058
    movl    $48058, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     div    t7 <- t6, 3418
    movl    $3418, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $80286, %eax            #  13:     add    t8 <- 80286, 92437
    movl    $92437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     sub    t9 <- t8, 13339
    movl    $13339, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  15:     sub    t10 <- t9, 76427
    movl    $76427, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -60(%ebp), %eax         #  16:     if     t7 >= t10 goto 6
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #  17:     goto   7
l_f2_6:
    movl    $1, %eax                #  19:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #  20:     goto   8
l_f2_7:
    movl    $0, %eax                #  22:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movzbl  -17(%ebp), %eax         #  24:     return t11
    jmp     l_f2_exit              
    movl    $5085, %eax             #  25:     add    t12 <- 5085, 32789
    movl    $32789, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 25075
    movl    $25075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     sub    t14 <- t13, 14558
    movl    $14558, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #  28:     call   t15 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     if     t14 # t15 goto 11
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_11                
    jmp     l_f2_12                 #  30:     goto   12
l_f2_11:
    movl    $1, %eax                #  32:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_13                 #  33:     goto   13
l_f2_12:
    movl    $0, %eax                #  35:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f2_13:
    movzbl  -37(%ebp), %eax         #  37:     return t16
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
    movl    $1, %eax                #   0:     if     1 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $47216, %eax            #   4:     assign v0 <- 47216
    movl    %eax, v0               
    movl    $83372, %eax            #   5:     if     83372 <= 37266 goto 7_if_true
    movl    $37266, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $100, %eax              #  11:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyProcedure          #  15:     call   dummyProcedure
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    movl    $54022, %eax            #  18:     assign v0 <- 54022
    movl    %eax, v0               
l_test_16_while_cond:
    call    dummyCHARfunc           #  20:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  21:     if     t2 # 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  22:     goto   15
l_test_17_while_body:
    jmp     l_test_exit            
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  26:     goto   21_while_cond
    jmp     l_test_16_while_cond    #  27:     goto   16_while_cond
l_test_15:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
