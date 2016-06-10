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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 31 of <array 43 of <array 33 of <array 16 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 40 of <array 64 of <array 2 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 81 of <array 46 of <array 88 of <array 12 of <array 19 of <int>>>>>>> %ebp+20 ]

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
    movl    $99, %eax               #   0:     if     99 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $98, %eax               #   4:     if     98 <= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  14:     if     100 # t1 goto 10_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_10_while_body     
    jmp     l_f0_8                  #  15:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  17:     goto   9_while_cond
l_f0_8:
    movl    $97, %eax               #  19:     return 97
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 81 of <array 46 of <array 88 of <array 12 of <array 19 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t23      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 40 of <array 64 of <array 2 of <array 4 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <ptr(4) to <array 40 of <array 31 of <array 43 of <array 33 of <array 16 of <char>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t6       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 13 of <array 18 of <array 43 of <array 90 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #   -105(%ebp)   1  [ $v3       <char> %ebp-105 ]
    #   -28153092(%ebp)  28152984  [ $v4       <array 40 of <array 31 of <array 43 of <array 33 of <array 16 of <char>>>>>> %ebp-28153092 ]
    #   -28357916(%ebp)  204824  [ $v5       <array 10 of <array 40 of <array 64 of <array 2 of <array 4 of <char>>>>>> %ebp-28357916 ]
    #   -327391796(%ebp)  299033880  [ $v6       <array 81 of <array 46 of <array 88 of <array 12 of <array 19 of <int>>>>>> %ebp-327391796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $327391784, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $81847946, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-28153092(%ebp)      # local array 'v4': 5 dimensions
    movl    $40,-28153088(%ebp)     #   dimension 1: 40 elements
    movl    $31,-28153084(%ebp)     #   dimension 2: 31 elements
    movl    $43,-28153080(%ebp)     #   dimension 3: 43 elements
    movl    $33,-28153076(%ebp)     #   dimension 4: 33 elements
    movl    $16,-28153072(%ebp)     #   dimension 5: 16 elements
    movl    $5,-28357916(%ebp)      # local array 'v5': 5 dimensions
    movl    $10,-28357912(%ebp)     #   dimension 1: 10 elements
    movl    $40,-28357908(%ebp)     #   dimension 2: 40 elements
    movl    $64,-28357904(%ebp)     #   dimension 3: 64 elements
    movl    $2,-28357900(%ebp)      #   dimension 4: 2 elements
    movl    $4,-28357896(%ebp)      #   dimension 5: 4 elements
    movl    $5,-327391796(%ebp)     # local array 'v6': 5 dimensions
    movl    $81,-327391792(%ebp)    #   dimension 1: 81 elements
    movl    $46,-327391788(%ebp)    #   dimension 2: 46 elements
    movl    $88,-327391784(%ebp)    #   dimension 3: 88 elements
    movl    $12,-327391780(%ebp)    #   dimension 4: 12 elements
    movl    $19,-327391776(%ebp)    #   dimension 5: 19 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    leal    -327391796(%ebp), %eax  #   2:     &()    t2 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     param  3 <- t2
    pushl   %eax                   
    leal    -28357916(%ebp), %eax   #   4:     &()    t3 <- v5
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   5:     param  2 <- t3
    pushl   %eax                   
    call    ReadInt                 #   6:     call   t4 <- ReadInt
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   7:     param  1 <- t4
    pushl   %eax                   
    leal    -28153092(%ebp), %eax   #   8:     &()    t5 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   9:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  10:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  11:     if     t6 < 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_while_body:
    movl    $100, %eax              #  14:     assign v3 <- 100
    movb    %al, -105(%ebp)        
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $25980, %eax            #  18:     mul    t8 <- 25980, t7
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  19:     add    t9 <- t8, 86163
    movl    $86163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -104(%ebp), %eax        #  23:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t12 <- t11, 3730
    movl    $3730, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t15 <- t14, 82066
    movl    $82066, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t18 <- t17, 64491
    movl    $64491, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  37:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  38:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t22 <- v1, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $98, %eax               #  40:     assign @t22 <- 98
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_2_while_cond       #  41:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  43:     call   t23 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         

l_f1_exit:
    # epilogue
    addl    $327391784, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t1
    movb    %al, -15(%ebp)         
l_f2_6_while_cond:
    movl    $64653, %eax            #  10:     return 64653
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
l_test_2_while_cond:
    movl    $6825, %eax             #   2:     if     6825 >= 14534 goto 3_while_body
    movl    $14534, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
    jmp     l_test_6                #   7:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyProcedure          #  10:     call   dummyProcedure
l_test_11_while_cond:
    movl    $82578, %eax            #  12:     if     82578 >= 99550 goto 12_while_body
    movl    $99550, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
    jmp     l_test_14               #  18:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_2_while_cond     #  21:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $80709, %eax            #  24:     if     80709 < 20567 goto 19_if_true
    movl    $20567, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #  28:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #  29:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_18               #  30:     goto   18
l_test_20_if_false:
l_test_18:
    call    dummyBOOLfunc           #  33:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
