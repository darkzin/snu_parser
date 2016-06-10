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
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t4       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t5       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <int> %ebp-132 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 4 of <array 4 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 10 of <array 8 of <array 6 of <array 6 of <int>>>>>>> %ebp+12 ]
    #   -136(%ebp)   4  [ $v2       <int> %ebp-136 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $124, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $31, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $70431, %eax            #   1:     div    t1 <- 70431, 21938
    movl    $21938, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t2 <- t1, 77347
    movl    $77347, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $25475, %eax            #   3:     div    t3 <- 25475, 42327
    movl    $42327, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   4:     div    t4 <- t3, 25274
    movl    $25274, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -60(%ebp), %eax         #   5:     if     t2 <= t4 goto 2_while_body
    movl    -112(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $56141, %eax            #  10:     sub    t5 <- 56141, 48967
    movl    $48967, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  11:     sub    t6 <- t5, 5883
    movl    $5883, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  12:     return t6
    jmp     l_f0_exit              
    movl    $36196, %eax            #  13:     sub    t7 <- 36196, 50200
    movl    $50200, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  14:     sub    t8 <- t7, 10888
    movl    $10888, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  15:     sub    t9 <- t8, 91472
    movl    $91472, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  16:     sub    t10 <- t9, 28057
    movl    $28057, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t11 <- t10, 7061
    movl    $7061, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $47073, %eax            #  21:     mul    t13 <- 47073, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $42390, %eax            #  22:     mul    t14 <- 42390, 83991
    movl    $83991, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     div    t15 <- t14, 28716
    movl    $28716, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     div    t16 <- t15, 1011
    movl    $1011, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t17 <- t13, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     add    t20 <- t19, 33390
    movl    $33390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  34:     mul    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  35:     add    t23 <- t22, 71729
    movl    $71729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  39:     mul    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  40:     add    t26 <- t25, 77001
    movl    $77001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  41:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  43:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  44:     add    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    12(%ebp), %eax          #  45:     add    t30 <- v1, t29
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -24(%ebp), %eax         #  46:     assign @t30 <- t11
    movl    -108(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $124, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_3                  #   1:     goto   3
l_f1_3:
    movl    $5402, %eax             #   3:     assign v1 <- 5402
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   8:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 10 of <array 8 of <array 6 of <array 6 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 2 of <array 4 of <array 4 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #   -1972(%ebp)  1944  [ $v0       <array 10 of <array 2 of <array 4 of <array 4 of <array 6 of <bool>>>>>> %ebp-1972 ]
    #   -117196(%ebp)  115224  [ $v1       <array 10 of <array 10 of <array 8 of <array 6 of <array 6 of <int>>>>>> %ebp-117196 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $117184, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29296, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1972(%ebp)          # local array 'v0': 5 dimensions
    movl    $10,-1968(%ebp)         #   dimension 1: 10 elements
    movl    $2,-1964(%ebp)          #   dimension 2: 2 elements
    movl    $4,-1960(%ebp)          #   dimension 3: 4 elements
    movl    $4,-1956(%ebp)          #   dimension 4: 4 elements
    movl    $6,-1952(%ebp)          #   dimension 5: 6 elements
    movl    $5,-117196(%ebp)        # local array 'v1': 5 dimensions
    movl    $10,-117192(%ebp)       #   dimension 1: 10 elements
    movl    $10,-117188(%ebp)       #   dimension 2: 10 elements
    movl    $8,-117184(%ebp)        #   dimension 3: 8 elements
    movl    $6,-117180(%ebp)        #   dimension 4: 6 elements
    movl    $6,-117176(%ebp)        #   dimension 5: 6 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    -117196(%ebp), %eax     #   1:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    leal    -1972(%ebp), %eax       #   3:     &()    t3 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   5:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $58982, %eax            #   6:     param  0 <- 58982
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $117184, %esp           # remove locals
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
    movl    $92501, %eax            #   0:     if     92501 < 18781 goto 4_if_true
    movl    $18781, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   9:     goto   0
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
